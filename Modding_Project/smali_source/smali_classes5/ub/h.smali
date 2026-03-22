.class public final synthetic Lub/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Ab;

.field public final synthetic b:Lcom/inmobi/media/a7;

.field public final synthetic c:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/Ab;Lcom/inmobi/media/a7;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/h;->a:Lcom/inmobi/media/Ab;

    .line 5
    .line 6
    iput-object p2, p0, Lub/h;->b:Lcom/inmobi/media/a7;

    .line 7
    .line 8
    iput-object p3, p0, Lub/h;->c:Lorg/json/JSONObject;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/h;->a:Lcom/inmobi/media/Ab;

    .line 2
    .line 3
    iget-object v1, p0, Lub/h;->b:Lcom/inmobi/media/a7;

    .line 4
    .line 5
    iget-object v2, p0, Lub/h;->c:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/Ab;->a(Lcom/inmobi/media/Ab;Lcom/inmobi/media/a7;Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
