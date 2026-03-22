.class public final Lcom/inmobi/media/T6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Ja;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;)V
    .locals 1

    .line 1
    const-string v0, "pingsConfig"

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
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/za;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "ping"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/inmobi/media/N9;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/inmobi/media/za;->c:Ljava/util/Map;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/inmobi/media/Uc;->k()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "user-agent"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/inmobi/media/N9;->x:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/inmobi/media/N9;->t:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/inmobi/media/N9;->u:Z

    .line 41
    .line 42
    iget-boolean p1, p1, Lcom/inmobi/media/za;->d:Z

    .line 43
    .line 44
    iput-boolean p1, v0, Lcom/inmobi/media/N9;->r:Z

    .line 45
    .line 46
    const-string p1, "request"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p1, "mRequest"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method
