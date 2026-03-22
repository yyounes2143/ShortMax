.class final Lcom/apm/insight/k/d$1;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/k/d;->c(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lorg/json/JSONObject;

.field private synthetic b:Lcom/apm/insight/k/d;


# direct methods
.method constructor <init>(Lcom/apm/insight/k/d;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/insight/k/d$1;->b:Lcom/apm/insight/k/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/apm/insight/k/d$1;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apm/insight/k/e;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/apm/insight/k/d$1;->a:Lorg/json/JSONObject;

    .line 6
    .line 7
    const-string/jumbo v2, "upload_scene"

    .line 8
    .line 9
    .line 10
    const-string v3, "direct"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v1, p0, Lcom/apm/insight/k/d$1;->a:Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/apm/insight/k/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/l/f;

    .line 27
    .line 28
    .line 29
    return-void
.end method
