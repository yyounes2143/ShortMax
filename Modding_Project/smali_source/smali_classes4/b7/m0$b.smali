.class final Lb7/m0$b;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lb7/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb7/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/Message;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lb7/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb7/m0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb7/m0$b;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb7/m0$b;->a:Landroid/os/Message;

    .line 3
    .line 4
    iput-object v0, p0, Lb7/m0$b;->b:Lb7/m0;

    .line 5
    .line 6
    invoke-static {p0}, Lb7/m0;->c(Lb7/m0$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb7/m0$b;->a:Landroid/os/Message;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Message;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lb7/m0$b;->b()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c(Landroid/os/Handler;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb7/m0$b;->a:Landroid/os/Message;

    .line 2
    .line 3
    invoke-static {v0}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Message;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {p0}, Lb7/m0$b;->b()V

    .line 14
    .line 15
    .line 16
    return p1
.end method

.method public d(Landroid/os/Message;Lb7/m0;)Lb7/m0$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lb7/m0$b;->a:Landroid/os/Message;

    .line 2
    .line 3
    iput-object p2, p0, Lb7/m0$b;->b:Lb7/m0;

    .line 4
    .line 5
    return-object p0
.end method
