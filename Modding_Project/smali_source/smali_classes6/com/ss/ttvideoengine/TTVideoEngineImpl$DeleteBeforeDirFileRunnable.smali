.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$DeleteBeforeDirFileRunnable;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteBeforeDirFileRunnable"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$DeleteBeforeDirFileRunnable;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$DeleteBeforeDirFileRunnable;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->deleteBeforeDirFiles(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
