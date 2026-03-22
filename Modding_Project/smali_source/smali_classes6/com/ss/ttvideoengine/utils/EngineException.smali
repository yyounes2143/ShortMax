.class public Lcom/ss/ttvideoengine/utils/EngineException;
.super Ljava/lang/Exception;
.source "EngineException.java"


# instance fields
.field private final mError:Lcom/ss/ttvideoengine/utils/Error;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/utils/Error;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/EngineException;->mError:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/utils/Error;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/EngineException;->mError:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method


# virtual methods
.method public getError()Lcom/ss/ttvideoengine/utils/Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/EngineException;->mError:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    return-object v0
.end method
