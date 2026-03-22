.class final Lcom/pgl/ssdk/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/y;->a(Landroid/view/MotionEvent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/y$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pgl/ssdk/y$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/pgl/ssdk/y$a;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/pgl/ssdk/y;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/pgl/ssdk/y$a;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v1, 0xab

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/pgl/ssdk/y$a;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/pgl/ssdk/y;->a(Landroid/content/Context;)Landroid/hardware/input/InputManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget v1, p0, Lcom/pgl/ssdk/y$a;->c:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Lcom/pgl/ssdk/y;->a()V

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/pgl/ssdk/y;->b()I

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/pgl/ssdk/y;->c()I

    .line 37
    .line 38
    .line 39
    const-string v0, "nihc"

    .line 40
    .line 41
    invoke-static {v0}, Lcom/pgl/ssdk/y;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-static {}, Lcom/pgl/ssdk/y;->d()I

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/pgl/ssdk/y;->e()I

    .line 55
    .line 56
    .line 57
    const-string/jumbo v0, "vihc"

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/pgl/ssdk/y;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v2, 0x1d

    .line 67
    .line 68
    if-lt v1, v2, :cond_4

    .line 69
    .line 70
    invoke-static {v0}, Lcom/pgl/ssdk/h1;->a(Landroid/view/InputDevice;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-static {}, Lcom/pgl/ssdk/y;->f()I

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/pgl/ssdk/y;->g()I

    .line 80
    .line 81
    .line 82
    const-string v0, "eihc"

    .line 83
    .line 84
    invoke-static {v0}, Lcom/pgl/ssdk/y;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method
