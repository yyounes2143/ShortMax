.class final Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"

# interfaces
.implements Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isInitialized:Z

.field private static staticLayoutConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->Companion:Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getStaticLayoutConstructor$cp()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$isInitialized$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->isInitialized:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$setInitialized$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->isInitialized:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setStaticLayoutConstructor$cp(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public create(Landroidx/compose/ui/text/android/StaticLayoutParams;)Landroid/text/StaticLayout;
    .locals 18
    .param p1    # Landroidx/compose/ui/text/android/StaticLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "unable to call constructor"

    .line 2
    .line 3
    const-string v1, "StaticLayoutFactory"

    .line 4
    .line 5
    const-string v2, "params"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->Companion:Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;

    .line 13
    .line 14
    invoke-static {v2}, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;->access$getStaticLayoutConstructor(Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21$Companion;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getText()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getStart()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEnd()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getPaint()Landroid/text/TextPaint;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getAlignment()Landroid/text/Layout$Alignment;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getTextDir()Landroid/text/TextDirectionHeuristic;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingMultiplier()F

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingExtra()F

    .line 70
    .line 71
    .line 72
    move-result v13

    .line 73
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getIncludePadding()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsizedWidth()I

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getMaxLines()I

    .line 98
    .line 99
    .line 100
    move-result v17

    .line 101
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    filled-new-array/range {v5 .. v17}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    move-object v4, v2

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    sput-object v4, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 118
    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_1
    sput-object v4, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 124
    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_2
    sput-object v4, Landroidx/compose/ui/text/android/StaticLayoutFactoryPre21;->staticLayoutConstructor:Ljava/lang/reflect/Constructor;

    .line 130
    .line 131
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 135
    .line 136
    return-object v4

    .line 137
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getText()Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getStart()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEnd()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getPaint()Landroid/text/TextPaint;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getWidth()I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getAlignment()Landroid/text/Layout$Alignment;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingMultiplier()F

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingExtra()F

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getIncludePadding()Z

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsizedWidth()I

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    move-object v5, v0

    .line 184
    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 185
    .line 186
    .line 187
    return-object v0
.end method
