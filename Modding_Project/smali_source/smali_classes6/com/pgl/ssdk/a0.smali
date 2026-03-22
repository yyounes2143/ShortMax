.class public Lcom/pgl/ssdk/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Landroid/hardware/display/DisplayManager$DisplayListener; = null

.field private static volatile b:Z = false

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static volatile f:Z = false

.field private static volatile g:Z = false

.field private static h:Landroid/hardware/display/DisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    invoke-static {p0}, Lcom/pgl/ssdk/a0;->a(Landroid/view/Display;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "pd"

    return-object p0
.end method

.method private static a(Landroid/view/Display;)Ljava/lang/String;
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getType"

    invoke-static {p0, v1, v5, v3, v4}, Lcom/pgl/ssdk/v0;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getOwnerPackageName"

    invoke-static {p0, v3, v6, v4, v5}, Lcom/pgl/ssdk/v0;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v4, 0x0

    const-string v5, "TYPE_VIRTUAL"

    invoke-static {v4, p0, v5, v4}, Lcom/pgl/ssdk/v0;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v1, p0, :cond_0

    const/4 v2, 0x1

    .line 8
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s#%s#%b"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pgl/ssdk/a0;->b(II)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 11
    sget-boolean v0, Lcom/pgl/ssdk/a0;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/pgl/ssdk/a0;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/pgl/ssdk/a0;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/pgl/ssdk/a0;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 12
    :cond_1
    sget-boolean v0, Lcom/pgl/ssdk/a0;->b:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/pgl/ssdk/a0;->f:Z

    if-eqz v0, :cond_2

    .line 13
    sget-boolean p0, Lcom/pgl/ssdk/a0;->g:Z

    return p0

    :cond_2
    const/4 v0, 0x0

    if-nez p0, :cond_3

    return v0

    .line 14
    :cond_3
    sget-object v2, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_4

    const-string v2, "display"

    .line 15
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sput-object p0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    .line 16
    :cond_4
    sget-object p0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_6

    .line 17
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 18
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_6

    aget-object v3, p0, v0

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_5

    .line 20
    sput-boolean v1, Lcom/pgl/ssdk/a0;->g:Z

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_6
    :goto_1
    sput-boolean v1, Lcom/pgl/ssdk/a0;->f:Z

    .line 22
    sget-boolean p0, Lcom/pgl/ssdk/a0;->g:Z

    return p0
.end method

.method private static b(II)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/pgl/ssdk/a0;->a(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 11
    sget-object p1, Lcom/pgl/ssdk/a0;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    sput-object p0, Lcom/pgl/ssdk/a0;->e:Ljava/lang/String;

    return-void

    .line 13
    :cond_1
    sget-object p1, Lcom/pgl/ssdk/a0;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    sput-object p0, Lcom/pgl/ssdk/a0;->d:Ljava/lang/String;

    return-void

    .line 15
    :cond_2
    sget-object p1, Lcom/pgl/ssdk/a0;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    sput-object p0, Lcom/pgl/ssdk/a0;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/pgl/ssdk/a0;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/pgl/ssdk/a0;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/pgl/ssdk/a0$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/a0$a;-><init>()V

    sput-object v0, Lcom/pgl/ssdk/a0;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 4
    :cond_1
    sget-object v0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_2

    const-string v0, "display"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    sput-object p0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    .line 6
    :cond_2
    sget-object p0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_3

    .line 7
    invoke-static {}, Lcom/pgl/ssdk/r0;->b()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    :try_start_0
    sget-object v0, Lcom/pgl/ssdk/a0;->h:Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/pgl/ssdk/a0;->a:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 9
    sput-boolean p0, Lcom/pgl/ssdk/a0;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
