.class public final Lcom/bytedance/bdtracker/z0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Lcom/bytedance/bdtracker/v0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/bytedance/applog/exposure/ViewExposureManager;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureManager;)V
    .locals 1
    .param p1    # Lcom/bytedance/applog/exposure/ViewExposureManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/bdtracker/z0;->c:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 10
    .line 11
    new-instance p1, Lcom/bytedance/bdtracker/z0$a;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/z0$a;-><init>(Lcom/bytedance/bdtracker/z0;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/bdtracker/z0;->a:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/bdtracker/w0;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/w0;-><init>(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/bdtracker/z0;->b:Lcom/bytedance/bdtracker/v0;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/bdtracker/q0;)V
    .locals 1
    .param p1    # Lcom/bytedance/bdtracker/q0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/bytedance/bdtracker/y0;->a:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    :goto_0
    new-instance p1, Lcom/bytedance/bdtracker/w0;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/bdtracker/z0;->a:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/bytedance/bdtracker/w0;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Lcom/bytedance/bdtracker/x0;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/bdtracker/z0;->a:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/bytedance/bdtracker/x0;-><init>(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    iput-object p1, p0, Lcom/bytedance/bdtracker/z0;->b:Lcom/bytedance/bdtracker/v0;

    .line 31
    .line 32
    return-void
.end method
