.class public final synthetic Lcom/ss/ttvideoengine/log/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/h;->a:Lorg/json/JSONObject;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/h;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->f(Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
