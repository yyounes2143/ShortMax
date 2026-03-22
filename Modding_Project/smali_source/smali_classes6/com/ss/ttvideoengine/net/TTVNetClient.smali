.class public abstract Lcom/ss/ttvideoengine/net/TTVNetClient;
.super Ljava/lang/Object;
.source "TTVNetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;,
        Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;
    }
.end annotation


# static fields
.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_POST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TTVNetClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    const-string v0, "TTVNetClient"

    .line 2
    .line 3
    const-string v1, "TTVNetClient is a abstract class, imp is null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public startTask(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 0

    .line 4
    const-string p1, "TTVNetClient"

    const-string p2, "TTVNetClient is a abstract class, imp is null"

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 3
    const-string p1, "TTVNetClient"

    const-string p2, "TTVNetClient is a abstract class, imp is null"

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "TTVNetClient"

    const-string p2, "TTVNetClient is a abstract class, imp is null"

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;",
            ")V"
        }
    .end annotation

    .line 2
    const-string p1, "TTVNetClient"

    const-string p2, "TTVNetClient is a abstract class, imp is null"

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
