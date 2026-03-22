.class public interface abstract Lcom/ss/ttvideoengine/selector/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Selector"


# virtual methods
.method public abstract select(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;
    .param p1    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ss/ttvideoengine/selector/SelectedInfo;"
        }
    .end annotation
.end method
