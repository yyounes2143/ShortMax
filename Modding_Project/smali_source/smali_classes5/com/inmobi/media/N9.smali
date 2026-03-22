.class public Lcom/inmobi/media/N9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/inmobi/media/ue;

.field public d:Z

.field public final e:Lcom/inmobi/media/z5;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public l:Lorg/json/JSONObject;

.field public m:Ljava/lang/String;

.field public n:Lcom/inmobi/media/P9;

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/inmobi/media/tc;

.field public x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V
    .locals 9

    const-string v0, "GET"

    const-string v1, "requestType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v7, "application/x-www-form-urlencoded"

    const/16 v8, 0x40

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->v:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V
    .locals 8

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_1

    .line 24
    const-string p6, "application/x-www-form-urlencoded"

    :cond_1
    move-object v6, p6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "requestType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestContentType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/N9;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/N9;->c:Lcom/inmobi/media/ue;

    .line 5
    iput-boolean p4, p0, Lcom/inmobi/media/N9;->d:Z

    .line 6
    iput-object p5, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 7
    iput-object p6, p0, Lcom/inmobi/media/N9;->f:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/inmobi/media/N9;->g:Z

    .line 9
    const-class p2, Lcom/inmobi/media/N9;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 11
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    const p2, 0xea60

    .line 12
    iput p2, p0, Lcom/inmobi/media/N9;->p:I

    .line 13
    iput p2, p0, Lcom/inmobi/media/N9;->q:I

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/inmobi/media/N9;->r:Z

    .line 15
    iput-boolean p2, p0, Lcom/inmobi/media/N9;->t:Z

    .line 16
    iput-boolean p2, p0, Lcom/inmobi/media/N9;->u:Z

    .line 17
    iput-boolean p2, p0, Lcom/inmobi/media/N9;->v:Z

    .line 18
    iput-boolean p2, p0, Lcom/inmobi/media/N9;->x:Z

    .line 19
    const-string p2, "GET"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    goto :goto_0

    .line 21
    :cond_0
    const-string p2, "POST"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 23
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/N9;->l:Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/media/uc;
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 21
    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/rc;

    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "POST"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/media/rc;->b:Lcom/inmobi/media/rc;

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/rc;

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/N9;->b:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    const-string v2, "url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v2, Lcom/inmobi/media/qc;

    invoke-direct {v2, v1, v0}, Lcom/inmobi/media/qc;-><init>(Ljava/lang/String;Lcom/inmobi/media/rc;)V

    .line 28
    sget-boolean v1, Lcom/inmobi/media/T9;->a:Z

    iget-object v1, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/inmobi/media/T9;->a(Ljava/util/Map;)V

    .line 29
    iget-object v1, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 30
    const-string v3, "header"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object v1, v2, Lcom/inmobi/media/qc;->c:Ljava/util/HashMap;

    .line 32
    iget v1, p0, Lcom/inmobi/media/N9;->p:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/qc;->h:Ljava/lang/Integer;

    .line 34
    iget v1, p0, Lcom/inmobi/media/N9;->q:I

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/qc;->i:Ljava/lang/Integer;

    .line 36
    iget-boolean v1, p0, Lcom/inmobi/media/N9;->r:Z

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/qc;->f:Ljava/lang/Boolean;

    .line 38
    iget-boolean v1, p0, Lcom/inmobi/media/N9;->s:Z

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/media/qc;->j:Ljava/lang/Boolean;

    .line 40
    iget-object v1, p0, Lcom/inmobi/media/N9;->w:Lcom/inmobi/media/tc;

    if-eqz v1, :cond_2

    .line 41
    const-string v3, "retryPolicy"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object v1, v2, Lcom/inmobi/media/qc;->g:Lcom/inmobi/media/tc;

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "TAG"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->c()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v3, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 46
    const-string v5, "httpPostBody "

    invoke-static {v4, v1, v5, v0}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_4
    const-string v1, "postBody"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object v0, v2, Lcom/inmobi/media/qc;->e:Ljava/lang/String;

    goto :goto_1

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 51
    iget-object v3, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getParams "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_6
    const-string v1, "queryParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object v0, v2, Lcom/inmobi/media/qc;->d:Ljava/util/HashMap;

    .line 54
    :cond_7
    :goto_1
    new-instance v0, Lcom/inmobi/media/uc;

    invoke-direct {v0, v2}, Lcom/inmobi/media/uc;-><init>(Lcom/inmobi/media/qc;)V

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/inmobi/media/N9;->c:Lcom/inmobi/media/ue;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 58
    :try_start_0
    iget-object v0, v0, Lcom/inmobi/media/ue;->a:Lcom/inmobi/media/W5;

    invoke-virtual {v0}, Lcom/inmobi/media/W5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/inmobi/media/te;->a:Lcom/inmobi/media/te;

    invoke-virtual {v0}, Lcom/inmobi/media/te;->b()Lcom/inmobi/media/V0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/inmobi/media/V0;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    const-string v3, "GPID"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    const-class v0, Lcom/inmobi/media/ue;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSimpleName(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v2, "u-id-map"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 5

    const-string v0, "onResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 2
    const-string v3, "executeAsync: "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/inmobi/media/N9;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->e()V

    .line 5
    iget-boolean v0, p0, Lcom/inmobi/media/N9;->d:Z

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Dropping REQUEST FOR GDPR"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    new-instance v0, Lcom/inmobi/media/P9;

    invoke-direct {v0}, Lcom/inmobi/media/P9;-><init>()V

    .line 8
    new-instance v1, Lcom/inmobi/media/I9;

    .line 9
    sget-object v2, Lcom/inmobi/media/o4;->j:Lcom/inmobi/media/o4;

    .line 10
    const-string v3, "Network Request dropped as current request is not GDPR compliant."

    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/I9;-><init>(Lcom/inmobi/media/o4;Ljava/lang/String;)V

    .line 11
    iput-object v1, v0, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 12
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->a()Lcom/inmobi/media/uc;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/M9;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/M9;-><init>(Lcom/inmobi/media/N9;Lkotlin/jvm/functions/Function1;)V

    const-string p1, "responseListener"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object v1, v0, Lcom/inmobi/media/uc;->l:Lcom/inmobi/media/M9;

    .line 15
    sget-object p1, Lcom/inmobi/media/wc;->a:Ljava/util/Set;

    .line 16
    const-string p1, "request"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/inmobi/media/wc;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x0

    .line 19
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/wc;->a(Lcom/inmobi/media/uc;J)V

    return-void
.end method

.method public final b()Lcom/inmobi/media/P9;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 8
    .line 9
    const-string v3, "Executing network request to URL: "

    .line 10
    .line 11
    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/inmobi/media/N9;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v0, Lcom/inmobi/media/A5;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->e()V

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/inmobi/media/N9;->d:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lcom/inmobi/media/A5;

    .line 46
    .line 47
    const-string v1, "Dropping REQUEST FOR GDPR"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    new-instance v0, Lcom/inmobi/media/P9;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/inmobi/media/P9;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/inmobi/media/I9;

    .line 58
    .line 59
    sget-object v2, Lcom/inmobi/media/o4;->j:Lcom/inmobi/media/o4;

    .line 60
    .line 61
    const-string v3, "Network Request dropped as current request is not GDPR compliant."

    .line 62
    .line 63
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/I9;-><init>(Lcom/inmobi/media/o4;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/N9;->n:Lcom/inmobi/media/P9;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iget-object v0, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object v3, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 79
    .line 80
    const-string v4, "response has been failed before execute - "

    .line 81
    .line 82
    invoke-static {v3, v1, v4}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v4, p0, Lcom/inmobi/media/N9;->n:Lcom/inmobi/media/P9;

    .line 87
    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    iget-object v2, v4, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 91
    .line 92
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v0, Lcom/inmobi/media/A5;

    .line 100
    .line 101
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/N9;->n:Lcom/inmobi/media/P9;

    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->a()Lcom/inmobi/media/uc;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v3, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 115
    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    iget-object v4, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 119
    .line 120
    const-string v5, "Making network request to: "

    .line 121
    .line 122
    invoke-static {v4, v1, v5}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v5, v0, Lcom/inmobi/media/uc;->a:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v3, Lcom/inmobi/media/A5;

    .line 136
    .line 137
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    const-string v1, "request"

    .line 141
    .line 142
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    invoke-static {v0, v2}, Lcom/inmobi/media/H9;->a(Lcom/inmobi/media/uc;Lkotlin/jvm/functions/Function2;)Lcom/inmobi/media/yc;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    iget-object v4, v3, Lcom/inmobi/media/yc;->a:Lcom/inmobi/media/I9;

    .line 150
    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    iget-object v4, v4, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_8
    move-object v4, v2

    .line 157
    :goto_0
    sget-object v5, Lcom/inmobi/media/o4;->m:Lcom/inmobi/media/o4;

    .line 158
    .line 159
    if-eq v4, v5, :cond_7

    .line 160
    .line 161
    invoke-static {v3}, Lcom/inmobi/media/D4;->a(Lcom/inmobi/media/yc;)Lcom/inmobi/media/P9;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v2, "response"

    .line 166
    .line 167
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/N9;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "application/json"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/N9;->l:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "application/x-www-form-urlencoded"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-boolean v0, Lcom/inmobi/media/T9;->a:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/inmobi/media/T9;->a(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 34
    .line 35
    const-string v1, "&"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/inmobi/media/T9;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v0, ""

    .line 43
    .line 44
    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/N9;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    invoke-static {v1}, Lcom/inmobi/media/T9;->a(Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 11
    .line 12
    const-string v2, "&"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/inmobi/media/T9;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v4, p0, Lcom/inmobi/media/N9;->h:Ljava/lang/String;

    .line 23
    .line 24
    const-string v5, "TAG"

    .line 25
    .line 26
    const-string v6, "Get params: "

    .line 27
    .line 28
    invoke-static {v4, v5, v6, v1}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v3, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    sub-int/2addr v3, v4

    .line 43
    const/4 v5, 0x0

    .line 44
    move v6, v5

    .line 45
    move v7, v6

    .line 46
    :goto_0
    if-gt v6, v3, :cond_6

    .line 47
    .line 48
    if-nez v7, :cond_1

    .line 49
    .line 50
    move v8, v6

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v8, v3

    .line 53
    :goto_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/16 v9, 0x20

    .line 58
    .line 59
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-gtz v8, :cond_2

    .line 64
    .line 65
    move v8, v4

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move v8, v5

    .line 68
    :goto_2
    if-nez v7, :cond_4

    .line 69
    .line 70
    if-nez v8, :cond_3

    .line 71
    .line 72
    move v7, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    if-nez v8, :cond_5

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    :goto_3
    add-int/2addr v3, v4

    .line 84
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-lez v3, :cond_9

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x2

    .line 100
    const-string v6, "?"

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-static {v0, v6, v5, v4, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_7
    if-eqz v0, :cond_8

    .line 115
    .line 116
    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_8

    .line 121
    .line 122
    invoke-static {v0, v6, v5, v4, v3}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {}, Lcom/inmobi/media/Uc;->k()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "User-Agent"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "POST"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/inmobi/media/N9;->f:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "Content-Type"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/inmobi/media/N9;->g:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 39
    .line 40
    const-string v1, "Content-Encoding"

    .line 41
    .line 42
    const-string v2, "gzip"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/inmobi/media/N9;->c()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "Content-Length"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/G4;->a:Lcom/inmobi/media/G4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/G4;->j()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/inmobi/media/N9;->d:Z

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/inmobi/media/G4;->a(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/inmobi/media/N9;->d:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "GET"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v2, "POST"

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/inmobi/media/N9;->t:Z

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    sget-object v3, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v3, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 42
    .line 43
    iget-boolean v4, p0, Lcom/inmobi/media/N9;->o:Z

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Lcom/inmobi/media/L3;->a(Z)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-static {}, Lcom/inmobi/media/Y4;->a()Ljava/util/HashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 62
    .line 63
    iget-boolean v3, p0, Lcom/inmobi/media/N9;->u:Z

    .line 64
    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/inmobi/media/N9;->a(Ljava/util/HashMap;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 80
    .line 81
    iget-boolean v3, p0, Lcom/inmobi/media/N9;->t:Z

    .line 82
    .line 83
    if-eqz v3, :cond_6

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    sget-object v3, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    if-eqz v0, :cond_5

    .line 93
    .line 94
    sget-object v3, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 95
    .line 96
    iget-boolean v4, p0, Lcom/inmobi/media/N9;->o:Z

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Lcom/inmobi/media/L3;->a(Z)Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-static {}, Lcom/inmobi/media/Y4;->a()Ljava/util/HashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 115
    .line 116
    iget-boolean v3, p0, Lcom/inmobi/media/N9;->u:Z

    .line 117
    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/inmobi/media/N9;->a(Ljava/util/HashMap;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/media/N9;->v:Z

    .line 124
    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    invoke-static {}, Lcom/inmobi/media/G4;->c()Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_9

    .line 132
    .line 133
    iget-object v3, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    const-string v4, "consentObject"

    .line 140
    .line 141
    const-string v5, "toString(...)"

    .line 142
    .line 143
    if-eqz v3, :cond_8

    .line 144
    .line 145
    iget-object v3, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 146
    .line 147
    if-eqz v3, :cond_9

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    iget-object v3, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_9

    .line 170
    .line 171
    iget-object v3, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 187
    .line 188
    :cond_9
    :goto_1
    iget-boolean v0, p0, Lcom/inmobi/media/N9;->x:Z

    .line 189
    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    iget-object v0, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    const-string v1, "u-appsecure"

    .line 199
    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    iget-object v0, p0, Lcom/inmobi/media/N9;->j:Ljava/util/HashMap;

    .line 203
    .line 204
    if-eqz v0, :cond_b

    .line 205
    .line 206
    sget-byte v2, Lcom/inmobi/media/e1;->f:B

    .line 207
    .line 208
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Ljava/lang/String;

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/inmobi/media/N9;->a:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_b

    .line 226
    .line 227
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 228
    .line 229
    if-eqz v0, :cond_b

    .line 230
    .line 231
    sget-byte v2, Lcom/inmobi/media/e1;->f:B

    .line 232
    .line 233
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Ljava/lang/String;

    .line 242
    .line 243
    :cond_b
    :goto_2
    return-void
.end method
