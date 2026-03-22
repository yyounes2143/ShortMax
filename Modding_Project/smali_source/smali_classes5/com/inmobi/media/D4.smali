.class public abstract Lcom/inmobi/media/D4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/inmobi/media/yc;)Lcom/inmobi/media/P9;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/inmobi/media/P9;

    invoke-direct {v0}, Lcom/inmobi/media/P9;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/yc;->c:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    const-string v3, "value"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v3, v1

    if-nez v3, :cond_0

    .line 5
    new-array v1, v2, [B

    iput-object v1, v0, Lcom/inmobi/media/P9;->b:[B

    goto :goto_0

    .line 6
    :cond_0
    array-length v3, v1

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/inmobi/media/P9;->b:[B

    .line 7
    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/yc;->b:Ljava/util/Map;

    .line 9
    iput-object v1, v0, Lcom/inmobi/media/P9;->f:Ljava/util/Map;

    .line 10
    iget v1, p0, Lcom/inmobi/media/yc;->e:I

    .line 11
    iput v1, v0, Lcom/inmobi/media/P9;->e:I

    .line 12
    iget-object v1, p0, Lcom/inmobi/media/yc;->a:Lcom/inmobi/media/I9;

    .line 13
    iput-object v1, v0, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 14
    iget-object p0, p0, Lcom/inmobi/media/yc;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/inmobi/media/P9;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public static final a(Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 17
    invoke-static {p0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
