.class public final Lcom/inmobi/media/tf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/z5;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/z5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/inmobi/media/tf;->a:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Cc;Landroid/content/Context;SLcom/inmobi/media/Q;)Lcom/inmobi/media/ec;
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v0, p3

    move-object/from16 v13, p4

    const-string v1, "route"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adMetaData"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "SiblingWebViewManager"

    if-nez v0, :cond_1

    .line 11
    iget-object v0, v15, Lcom/inmobi/media/tf;->a:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating standard WebView with ID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v3, v14, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v12, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-byte v3, v13, Lcom/inmobi/media/Q;->o:B

    .line 15
    iget-object v4, v13, Lcom/inmobi/media/Q;->p:Ljava/util/Set;

    .line 16
    iget-object v5, v13, Lcom/inmobi/media/Q;->q:Ljava/lang/String;

    .line 17
    iget-object v6, v13, Lcom/inmobi/media/Q;->s:Ljava/lang/String;

    .line 18
    iget-object v9, v13, Lcom/inmobi/media/Q;->t:Lcom/inmobi/media/hc;

    .line 19
    iget-object v10, v13, Lcom/inmobi/media/Q;->u:Lcom/inmobi/media/z5;

    .line 20
    new-instance v16, Lcom/inmobi/media/ec;

    const-wide/16 v7, 0x0

    const/16 v17, 0x50

    const/4 v11, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v11

    move-object/from16 v11, p1

    move-object/from16 v18, v12

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/inmobi/media/ec;-><init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/hc;Lcom/inmobi/media/z5;Lcom/inmobi/media/Cc;Lcom/inmobi/media/tf;Lcom/inmobi/media/Q;I)V

    move-object/from16 v7, p1

    move-object/from16 v8, v18

    goto :goto_1

    :cond_1
    move-object/from16 v18, v12

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 21
    iget-object v0, v15, Lcom/inmobi/media/tf;->a:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating Sibling WebView with ID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p1

    .line 22
    iget-object v3, v7, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    move-object/from16 v8, v18

    invoke-virtual {v0, v8, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v7, p1

    move-object/from16 v8, v18

    .line 24
    :goto_0
    new-instance v16, Lcom/inmobi/media/lc;

    .line 25
    iget-byte v3, v13, Lcom/inmobi/media/Q;->o:B

    .line 26
    iget-object v4, v13, Lcom/inmobi/media/Q;->u:Lcom/inmobi/media/z5;

    const/4 v0, 0x0

    const v1, 0x3ffeff

    .line 27
    invoke-static {v13, v0, v1}, Lcom/inmobi/media/Q;->a(Lcom/inmobi/media/Q;Lcom/inmobi/media/hc;I)Lcom/inmobi/media/Q;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/media/lc;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;Lcom/inmobi/media/Q;Lcom/inmobi/media/tf;Lcom/inmobi/media/Cc;)V

    .line 29
    :goto_1
    iget-object v1, v7, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 30
    iget-object v2, v15, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, v15, Lcom/inmobi/media/tf;->a:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_3

    .line 32
    const-string v3, "Registered bridge for WebView ID: "

    invoke-static {v3, v1}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v8, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    move-object/from16 v8, v18

    .line 34
    iget-object v1, v15, Lcom/inmobi/media/tf;->a:Lcom/inmobi/media/z5;

    const-string v2, "Unsupported WebView type: "

    if-eqz v1, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v8, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 5

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/ec;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/ec;

    .line 10
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/inmobi/media/ec;

    .line 38
    .line 39
    instance-of v3, v3, Lcom/inmobi/media/lc;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/inmobi/media/ec;

    .line 80
    .line 81
    const-string v2, "null cannot be cast to non-null type com.inmobi.ads.containers.companions.RenderViewSibling"

    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    check-cast v1, Lcom/inmobi/media/lc;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    return-void
.end method
