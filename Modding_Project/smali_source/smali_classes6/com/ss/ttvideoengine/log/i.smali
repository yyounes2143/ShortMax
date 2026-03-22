.class public final synthetic Lcom/ss/ttvideoengine/log/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/i;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/i;->b:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/i;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/i;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$AsyncGetLogDataRunnable;->a(ZLorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
