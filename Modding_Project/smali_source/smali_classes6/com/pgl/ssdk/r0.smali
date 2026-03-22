.class public Lcom/pgl/ssdk/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/a1;->a()Lcom/pgl/ssdk/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/a1;->b()Lcom/pgl/ssdk/e1;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/pgl/ssdk/r0;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/a1;->a()Lcom/pgl/ssdk/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/a1;->c()Lcom/pgl/ssdk/e1;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/pgl/ssdk/r0;->b()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
