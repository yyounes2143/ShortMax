.class public final synthetic Lcom/ss/ttvideoengine/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/n;->a:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/n;->b:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/ss/ttvideoengine/n;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/n;->a:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/n;->b:Landroid/view/View;

    .line 4
    .line 5
    iget v2, p0, Lcom/ss/ttvideoengine/n;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->e(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
