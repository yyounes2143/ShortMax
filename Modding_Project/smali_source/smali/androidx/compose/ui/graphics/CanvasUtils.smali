.class public final Landroidx/compose/ui/graphics/CanvasUtils;
.super Ljava/lang/Object;
.source "CanvasUtils.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/CanvasUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static inorderBarrierMethod:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static orderMethodsFetched:Z

.field private static reorderBarrierMethod:Ljava/lang/reflect/Method;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/CanvasUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/graphics/CanvasUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->INSTANCE:Landroidx/compose/ui/graphics/CanvasUtils;

    .line 7
    .line 8
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


# virtual methods
.method public final enableZ(Landroid/graphics/Canvas;Z)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/graphics/CanvasZHelper;->INSTANCE:Landroidx/compose/ui/graphics/CanvasZHelper;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/CanvasZHelper;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    sget-boolean v1, Landroidx/compose/ui/graphics/CanvasUtils;->orderMethodsFetched:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_4

    .line 23
    .line 24
    const/16 v1, 0x1c

    .line 25
    .line 26
    const-string v3, "insertInorderBarrier"

    .line 27
    .line 28
    const-string v4, "insertReorderBarrier"

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    const-class v6, Landroid/graphics/Canvas;

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    :try_start_0
    const-class v0, Ljava/lang/Class;

    .line 36
    .line 37
    const-string v1, "getDeclaredMethod"

    .line 38
    .line 39
    const-class v7, Ljava/lang/String;

    .line 40
    .line 41
    new-array v8, v2, [Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    filled-new-array {v7, v8}, [Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-array v1, v2, [Ljava/lang/Class;

    .line 56
    .line 57
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/reflect/Method;

    .line 66
    .line 67
    sput-object v1, Landroidx/compose/ui/graphics/CanvasUtils;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    new-array v1, v2, [Ljava/lang/Class;

    .line 70
    .line 71
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/reflect/Method;

    .line 80
    .line 81
    sput-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-array v0, v2, [Ljava/lang/Class;

    .line 85
    .line 86
    invoke-virtual {v6, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 91
    .line 92
    new-array v0, v2, [Ljava/lang/Class;

    .line 93
    .line 94
    invoke-virtual {v6, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 99
    .line 100
    :goto_0
    sget-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 106
    .line 107
    .line 108
    :goto_1
    sget-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    :goto_2
    sput-boolean v5, Landroidx/compose/ui/graphics/CanvasUtils;->orderMethodsFetched:Z

    .line 117
    .line 118
    :cond_4
    if-eqz p2, :cond_5

    .line 119
    .line 120
    :try_start_1
    sget-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->reorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    new-array v1, v2, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_5
    if-nez p2, :cond_6

    .line 133
    .line 134
    sget-object p2, Landroidx/compose/ui/graphics/CanvasUtils;->inorderBarrierMethod:Ljava/lang/reflect/Method;

    .line 135
    .line 136
    if-eqz p2, :cond_6

    .line 137
    .line 138
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-array v0, v2, [Ljava/lang/Object;

    .line 142
    .line 143
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    .line 146
    :catch_1
    :cond_6
    :goto_3
    return-void
.end method
