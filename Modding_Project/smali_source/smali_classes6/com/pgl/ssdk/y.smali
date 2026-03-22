.class public Lcom/pgl/ssdk/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x0

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static f:I = 0x0

.field public static volatile g:Z = false

.field private static h:Z = false

.field private static i:Landroid/hardware/input/InputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/hardware/input/InputManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pgl/ssdk/y;->b(Landroid/content/Context;)Landroid/hardware/input/InputManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/pgl/ssdk/y;->h()V

    return-void
.end method

.method public static a(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 4
    sget-boolean v0, Lcom/pgl/ssdk/y;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.view.InputEventReceiver"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.view.ViewRootImpl$WindowInputEventReceiver"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.view.ViewRootImpl$InputStage"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p0

    .line 12
    new-instance v1, Lcom/pgl/ssdk/y$a;

    invoke-direct {v1, v0, p1, p0}, Lcom/pgl/ssdk/y$a;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/pgl/ssdk/r0;->b(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/pgl/ssdk/y;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 2

    .line 13
    invoke-static {}, Lcom/pgl/ssdk/y;->h()V

    const-string/jumbo v0, "vihc"

    .line 14
    :try_start_0
    sget v1, Lcom/pgl/ssdk/y;->d:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "eihc"

    .line 15
    :try_start_1
    sget v1, Lcom/pgl/ssdk/y;->e:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "nihc"

    .line 16
    :try_start_2
    sget v1, Lcom/pgl/ssdk/y;->f:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string/jumbo v0, "vic"

    .line 17
    :try_start_3
    sget v1, Lcom/pgl/ssdk/y;->a:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "nic"

    .line 18
    :try_start_4
    sget v1, Lcom/pgl/ssdk/y;->c:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "eic"

    .line 19
    :try_start_5
    sget v1, Lcom/pgl/ssdk/y;->b:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b()I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/y;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/y;->c:I

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/y;->h()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p0, v1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "vihc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "nihc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "eihc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "vic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "nic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "eic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    .line 5
    :pswitch_0
    sget p0, Lcom/pgl/ssdk/y;->d:I

    return p0

    .line 6
    :pswitch_1
    sget p0, Lcom/pgl/ssdk/y;->f:I

    return p0

    .line 7
    :pswitch_2
    sget p0, Lcom/pgl/ssdk/y;->e:I

    return p0

    .line 8
    :pswitch_3
    sget p0, Lcom/pgl/ssdk/y;->a:I

    return p0

    .line 9
    :pswitch_4
    sget p0, Lcom/pgl/ssdk/y;->c:I

    return p0

    .line 10
    :pswitch_5
    sget p0, Lcom/pgl/ssdk/y;->b:I

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1883f -> :sswitch_5
        0x1aa08 -> :sswitch_4
        0x1c810 -> :sswitch_3
        0x2f809f -> :sswitch_2
        0x3397f6 -> :sswitch_1
        0x373aee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/input/InputManager;
    .locals 1

    .line 11
    sget-object v0, Lcom/pgl/ssdk/y;->i:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    const-string v0, "input"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    sput-object p0, Lcom/pgl/ssdk/y;->i:Landroid/hardware/input/InputManager;

    .line 13
    :cond_0
    sget-object p0, Lcom/pgl/ssdk/y;->i:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static synthetic c()I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/y;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/pgl/ssdk/y;->f:I

    return v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/x0;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic d()I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/y;->a:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/pgl/ssdk/y;->a:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic e()I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/y;->d:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/pgl/ssdk/y;->d:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic f()I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/y;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/pgl/ssdk/y;->b:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic g()I
    .locals 2

    .line 1
    sget v0, Lcom/pgl/ssdk/y;->e:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/pgl/ssdk/y;->e:I

    .line 6
    .line 7
    return v0
.end method

.method private static h()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/pgl/ssdk/y;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/z;->b()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/pgl/ssdk/x0;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "nihc"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sput v1, Lcom/pgl/ssdk/y;->f:I

    .line 24
    .line 25
    const-string v1, "eihc"

    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    sput v1, Lcom/pgl/ssdk/y;->e:I

    .line 32
    .line 33
    const-string/jumbo v1, "vihc"

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput v0, Lcom/pgl/ssdk/y;->d:I

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/pgl/ssdk/y;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :catchall_0
    :cond_1
    return-void
.end method
