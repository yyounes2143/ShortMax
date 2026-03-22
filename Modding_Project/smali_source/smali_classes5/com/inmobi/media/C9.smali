.class public final Lcom/inmobi/media/C9;
.super Lcom/inmobi/media/r9;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/inmobi/media/D9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/D9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/C9;->e:Lcom/inmobi/media/D9;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/inmobi/media/r9;-><init>(Lcom/inmobi/media/D9;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2
    new-instance v15, Lcom/inmobi/media/tf;

    invoke-direct {v15, v2}, Lcom/inmobi/media/tf;-><init>(Lcom/inmobi/media/z5;)V

    .line 3
    new-instance v14, Lcom/inmobi/media/Cc;

    const-string v0, "adUnit"

    const-string v1, "default"

    invoke-direct {v14, v0, v1}, Lcom/inmobi/media/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/inmobi/media/ec;

    .line 5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v0

    .line 6
    invoke-direct/range {v3 .. v17}, Lcom/inmobi/media/ec;-><init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/hc;Lcom/inmobi/media/z5;Lcom/inmobi/media/Cc;Lcom/inmobi/media/tf;Lcom/inmobi/media/Q;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/inmobi/media/D9;->c:Ljava/util/HashMap;

    .line 8
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 9
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_0
    return-object v2
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/inmobi/media/ec;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/ec;

    .line 32
    iget-boolean v0, v0, Lcom/inmobi/media/ec;->h0:Z

    if-nez v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Lcom/inmobi/media/r9;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/inmobi/media/d8;Lcom/inmobi/commons/core/configs/AdConfig;)V
    .locals 6

    const-string v0, "TAG"

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/r9;->a(Landroid/view/View;Lcom/inmobi/media/d8;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 12
    instance-of v1, p1, Lcom/inmobi/media/ec;

    if-eqz v1, :cond_b

    .line 13
    iget-object v1, p0, Lcom/inmobi/media/C9;->e:Lcom/inmobi/media/D9;

    check-cast p1, Lcom/inmobi/media/ec;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :try_start_0
    instance-of v1, p2, Lcom/inmobi/media/F9;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/F9;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    sget-object v3, Lcom/inmobi/media/ec;->Z0:Lcom/inmobi/media/Eb;

    invoke-virtual {p1, v3, p3}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/gc;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 17
    iget-object p3, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz p3, :cond_1

    sget-object v3, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "disableUrlsToOpenInExternalApp "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast p3, Lcom/inmobi/media/A5;

    invoke-virtual {p3, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x1

    .line 18
    iput-boolean p3, p1, Lcom/inmobi/media/ec;->y:Z

    .line 19
    iget-object p2, p2, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 20
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 21
    iget-object v2, v1, Lcom/inmobi/media/F9;->y:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_a

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v1, -0x40732010

    if-eq p3, v1, :cond_8

    const v1, 0x1494f

    if-eq p3, v1, :cond_7

    const v1, 0x21ffab

    if-eq p3, v1, :cond_5

    const v1, 0x4fe4bf7

    if-eq p3, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p3, "REF_HTML"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    :cond_5
    const-string p3, "HTML"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {p1, p2}, Lcom/inmobi/media/ec;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_7
    const-string p3, "URL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_2

    :cond_8
    const-string p3, "REF_IFRAME"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p1, p2}, Lcom/inmobi/media/ec;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_a
    :goto_2
    invoke-virtual {p1, p2}, Lcom/inmobi/media/ec;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 27
    :goto_3
    const-string p2, "D9"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 29
    const-string p2, "event"

    invoke-static {p1, p2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 30
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p2, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_b
    :goto_4
    return-void
.end method
