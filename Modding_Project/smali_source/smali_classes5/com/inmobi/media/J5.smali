.class public final Lcom/inmobi/media/J5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/J5;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/te;->a:Lcom/inmobi/media/te;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/te;->c()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->reset()V

    .line 18
    .line 19
    .line 20
    :cond_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/J5;->a:Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/inmobi/media/Q5;->a(Lorg/json/JSONObject;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
