.class public final synthetic Lub/v1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/S0;

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/media/S0;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/v1;->a:Lcom/inmobi/media/S0;

    .line 5
    .line 6
    iput-object p2, p0, Lub/v1;->b:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lub/v1;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v1, p0, Lub/v1;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
