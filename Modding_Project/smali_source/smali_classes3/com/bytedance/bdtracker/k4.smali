.class public Lcom/bytedance/bdtracker/k4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/Class;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.tencent.smtt.sdk.WebView"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->d:Z

    .line 8
    .line 9
    const-string v0, "android.support.v7.widget.RecyclerView"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->e:Z

    .line 16
    .line 17
    const-string v0, "android.support.v4.view.ViewPager"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->f:Z

    .line 24
    .line 25
    const-string v0, "android.support.v4.widget.SwipeRefreshLayout"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->g:Z

    .line 32
    .line 33
    const-string v0, "android.support.v4.app.Fragment"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    const-string v0, "android.support.v4.app.FragmentActivity"

    .line 39
    .line 40
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    const-string v0, "android.support.v7.app.AlertDialog"

    .line 44
    .line 45
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    const-string v0, "android.support.v7.view.menu.ListMenuItemView"

    .line 49
    .line 50
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    .line 54
    .line 55
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->h:Z

    .line 60
    .line 61
    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->i:Z

    .line 68
    .line 69
    const-string v0, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    .line 70
    .line 71
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sput-boolean v0, Lcom/bytedance/bdtracker/k4;->j:Z

    .line 76
    .line 77
    const-string v0, "androidx.fragment.app.Fragment"

    .line 78
    .line 79
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    const-string v0, "androidx.fragment.app.FragmentActivity"

    .line 83
    .line 84
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    const-string v0, "androidx.appcompat.app.AlertDialog"

    .line 88
    .line 89
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    .line 93
    .line 94
    invoke-static {v0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/view/View;

    :goto_0
    if-eqz p0, :cond_2

    const-class v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "getChildAdapterPosition"

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/bytedance/bdtracker/k4;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v1, Lcom/bytedance/bdtracker/k4;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-string v1, "getChildPosition"

    :try_start_1
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/bytedance/bdtracker/k4;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    sget-object v1, Lcom/bytedance/bdtracker/k4;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    .line 2
    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    .line 3
    sget-boolean v0, Lcom/bytedance/bdtracker/k4;->h:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/bytedance/bdtracker/k4;->d:Z

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/bytedance/bdtracker/k4;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "android.support.v7.widget.RecyclerView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/bdtracker/k4;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "android.support.v4.view.ViewPager"

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
