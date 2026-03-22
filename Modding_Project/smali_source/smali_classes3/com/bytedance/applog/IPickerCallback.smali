.class public interface abstract Lcom/bytedance/applog/IPickerCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract failed(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract success(Lorg/json/JSONObject;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
