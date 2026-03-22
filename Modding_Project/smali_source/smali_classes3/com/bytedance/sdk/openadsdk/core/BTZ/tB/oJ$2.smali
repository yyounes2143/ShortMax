.class Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->tB:Ljava/io/File;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ex(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->oJ:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->Pfn(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->oJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ba(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$ZYk;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$ZYk;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$ZYk;

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2$1;

    const-string v1, "downloadZip"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$ZYk;Lcom/bytedance/sdk/component/cFZ/ZYk;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, -0x2bc

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;Z)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 1

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ex(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->oJ:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->Pfn(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->oJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->ba(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/16 v0, -0x2bc

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->Pfn:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$2;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;Z)V

    return-void
.end method
