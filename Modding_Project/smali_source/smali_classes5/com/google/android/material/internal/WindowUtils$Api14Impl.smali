.class Lcom/google/android/material/internal/WindowUtils$Api14Impl;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;
    .locals 3
    .param p0    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/material/internal/WindowUtils$Api14Impl;->getRealSizeForDisplay(Landroid/view/Display;)Landroid/graphics/Point;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-object v1
.end method

.method private static getRealSizeForDisplay(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 7
    .line 8
    const-string v2, "getRealSize"

    .line 9
    .line 10
    const-class v3, Landroid/graphics/Point;

    .line 11
    .line 12
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    .line 23
    .line 24
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :catch_2
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :goto_0
    invoke-static {}, Lcom/google/android/material/internal/WindowUtils;->access$000()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :goto_1
    invoke-static {}, Lcom/google/android/material/internal/WindowUtils;->access$000()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_2
    invoke-static {}, Lcom/google/android/material/internal/WindowUtils;->access$000()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_3
    return-object v0
.end method
