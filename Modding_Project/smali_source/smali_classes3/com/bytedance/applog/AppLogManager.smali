.class public final Lcom/bytedance/applog/AppLogManager;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/bytedance/applog/IAppLogInstance;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/bytedance/bdtracker/b;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method
