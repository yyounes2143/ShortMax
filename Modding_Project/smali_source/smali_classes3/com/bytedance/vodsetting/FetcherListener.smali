.class interface abstract Lcom/bytedance/vodsetting/FetcherListener;
.super Ljava/lang/Object;
.source "FetcherListener.java"


# static fields
.field public static final ErrorInvalidHostCode:I = -0x3e6

.field public static final ErrorInvalidJsonCode:I = -0x3e5

.field public static final ErrorOverRetryTimesCode:I = -0x3e7

.field public static final SuccessCode:I


# virtual methods
.method public abstract onResult(ILjava/lang/String;Lorg/json/JSONObject;)V
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onResult(ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
