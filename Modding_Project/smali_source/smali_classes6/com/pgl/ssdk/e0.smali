.class public Lcom/pgl/ssdk/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field private static f:I

.field private static g:I

.field private static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->touchscreen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    :cond_0
    const p0, 0xa2c2a

    .line 15
    .line 16
    .line 17
    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    float-to-int v0, v0

    .line 20
    sput v0, Lcom/pgl/ssdk/e0;->f:I

    .line 21
    .line 22
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 23
    .line 24
    sput p0, Lcom/pgl/ssdk/e0;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :catchall_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 15
    .line 16
    float-to-int v0, v0

    .line 17
    sput v0, Lcom/pgl/ssdk/e0;->g:I

    .line 18
    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 20
    .line 21
    float-to-int p0, p0

    .line 22
    sput p0, Lcom/pgl/ssdk/e0;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :catchall_0
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    const-string/jumbo v0, "window"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 23
    .line 24
    sput v1, Lcom/pgl/ssdk/e0;->a:I

    .line 25
    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 27
    .line 28
    sput v0, Lcom/pgl/ssdk/e0;->b:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sput v0, Lcom/pgl/ssdk/e0;->c:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    sput p0, Lcom/pgl/ssdk/e0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    :catchall_0
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "screen_brightness"

    .line 9
    .line 10
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/pgl/ssdk/e0;->d(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/pgl/ssdk/e0;->b(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/pgl/ssdk/e0;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/pgl/ssdk/e0;->e:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "[<!>]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/pgl/ssdk/e0;->a:I

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ","

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget v1, Lcom/pgl/ssdk/e0;->b:I

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget v1, Lcom/pgl/ssdk/e0;->c:I

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "x"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget v1, Lcom/pgl/ssdk/e0;->d:I

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
