.class public Lkk/a;
.super Ljava/lang/Object;
.source "CustomFresco.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Lv2/e; = null

.field private static volatile c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lkk/a;

    .line 2
    .line 3
    sput-object v0, Lkk/a;->a:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lt3/r;
    .locals 1

    .line 1
    invoke-static {}, Lkk/a;->b()Lt3/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lt3/v;->j()Lt3/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static b()Lt3/v;
    .locals 1

    .line 1
    invoke-static {}, Lt3/v;->l()Lt3/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lt3/s;)V
    .locals 1
    .param p1    # Lt3/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lkk/a;->d(Landroid/content/Context;Lt3/s;Lv2/b;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static d(Landroid/content/Context;Lt3/s;Lv2/b;)V
    .locals 1
    .param p1    # Lt3/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lv2/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, p2, v0}, Lkk/a;->e(Landroid/content/Context;Lt3/s;Lv2/b;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static e(Landroid/content/Context;Lt3/s;Lv2/b;Z)V
    .locals 2
    .param p1    # Lt3/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lv2/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Fresco#initialize"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-boolean v0, Lkk/a;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lkk/a;->a:Ljava/lang/Class;

    .line 17
    .line 18
    const-string v1, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ll2/a;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lkk/a;->c:Z

    .line 26
    .line 27
    :goto_0
    invoke-static {p3}, Lt3/w;->b(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lw4/a;->c()Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-nez p3, :cond_4

    .line 35
    .line 36
    invoke-static {}, Lf4/b;->d()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const-string p3, "Fresco.initialize->SoLoader.init"

    .line 43
    .line 44
    invoke-static {p3}, Lf4/b;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :try_start_0
    const-string p3, "com.facebook.imagepipeline.nativecode.NativeCodeInitializer"

    .line 48
    .line 49
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    const-string v0, "init"

    .line 54
    .line 55
    const-class v1, Landroid/content/Context;

    .line 56
    .line 57
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lf4/b;->d()Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-eqz p3, :cond_4

    .line 78
    .line 79
    :goto_1
    invoke-static {}, Lf4/b;->b()V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    :try_start_1
    new-instance p3, Lw4/c;

    .line 86
    .line 87
    invoke-direct {p3}, Lw4/c;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {p3}, Lw4/a;->b(Lw4/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lf4/b;->d()Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :goto_2
    invoke-static {}, Lf4/b;->d()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-static {}, Lf4/b;->b()V

    .line 107
    .line 108
    .line 109
    :cond_3
    throw p0

    .line 110
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    invoke-static {p0}, Lt3/v;->s(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_5
    invoke-static {p1}, Lt3/v;->t(Lt3/t;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    invoke-static {p0, p2}, Lkk/a;->f(Landroid/content/Context;Lv2/b;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lf4/b;->d()Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_6

    .line 131
    .line 132
    invoke-static {}, Lf4/b;->b()V

    .line 133
    .line 134
    .line 135
    :cond_6
    return-void
.end method

.method private static f(Landroid/content/Context;Lv2/b;)V
    .locals 1
    .param p1    # Lv2/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Fresco.initializeDrawee"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lv2/e;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lv2/e;-><init>(Landroid/content/Context;Lv2/b;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lkk/a;->b:Lv2/e;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->o(Lk2/k;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lf4/b;->d()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lf4/b;->b()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public static g()Lv2/d;
    .locals 1

    .line 1
    sget-object v0, Lkk/a;->b:Lv2/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv2/e;->a()Lv2/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
