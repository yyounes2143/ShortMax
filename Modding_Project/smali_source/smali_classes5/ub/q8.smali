.class public final synthetic Lub/q8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

.field public final synthetic b:Lorg/json/JSONObject;

.field public final synthetic c:Ljava/lang/Error;


# direct methods
.method public synthetic constructor <init>(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lub/q8;->a:Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    .line 5
    .line 6
    iput-object p2, p0, Lub/q8;->b:Lorg/json/JSONObject;

    .line 7
    .line 8
    iput-object p3, p0, Lub/q8;->c:Ljava/lang/Error;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lub/q8;->a:Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    .line 2
    .line 3
    iget-object v1, p0, Lub/q8;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    iget-object v2, p0, Lub/q8;->c:Ljava/lang/Error;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/ze;->b(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
