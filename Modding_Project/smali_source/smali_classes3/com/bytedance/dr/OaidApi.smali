.class public interface abstract Lcom/bytedance/dr/OaidApi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/dr/OaidApi$a;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract support(Landroid/content/Context;)Z
.end method
