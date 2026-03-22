.class public interface abstract Lcom/bytedance/applog/IExtraParams;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getExtraParams(Lcom/bytedance/applog/Level;)Ljava/util/HashMap;
    .param p1    # Lcom/bytedance/applog/Level;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/applog/Level;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
