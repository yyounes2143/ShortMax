.class public final Landroidx/compose/ui/text/android/StaticLayoutFactory;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final delegate:Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory23;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;->delegate:Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;

    .line 14
    .line 15
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

.method public static synthetic create$default(Landroidx/compose/ui/text/android/StaticLayoutFactory;Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[IILjava/lang/Object;)Landroid/text/StaticLayout;
    .locals 23

    .line 1
    move/from16 v0, p20

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move v5, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v5, p2

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x4

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    move v6, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move/from16 v6, p3

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/ui/text/android/LayoutCompat;->INSTANCE:Landroidx/compose/ui/text/android/LayoutCompat;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/text/android/LayoutCompat;->getDEFAULT_TEXT_DIRECTION_HEURISTIC$ui_text_release()Landroid/text/TextDirectionHeuristic;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v9, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object/from16 v9, p6

    .line 37
    .line 38
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/ui/text/android/LayoutCompat;->INSTANCE:Landroidx/compose/ui/text/android/LayoutCompat;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/ui/text/android/LayoutCompat;->getDEFAULT_LAYOUT_ALIGNMENT$ui_text_release()Landroid/text/Layout$Alignment;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v10, v1

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v10, p7

    .line 51
    .line 52
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    const v1, 0x7fffffff

    .line 57
    .line 58
    .line 59
    move v11, v1

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    move/from16 v11, p8

    .line 62
    .line 63
    :goto_4
    and-int/lit16 v1, v0, 0x100

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    move-object v12, v3

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    move-object/from16 v12, p9

    .line 71
    .line 72
    :goto_5
    and-int/lit16 v1, v0, 0x200

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    move/from16 v13, p5

    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_6
    move/from16 v13, p10

    .line 80
    .line 81
    :goto_6
    and-int/lit16 v1, v0, 0x400

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    const/high16 v1, 0x3f800000    # 1.0f

    .line 86
    .line 87
    move v14, v1

    .line 88
    goto :goto_7

    .line 89
    :cond_7
    move/from16 v14, p11

    .line 90
    .line 91
    :goto_7
    and-int/lit16 v1, v0, 0x800

    .line 92
    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    move v15, v1

    .line 97
    goto :goto_8

    .line 98
    :cond_8
    move/from16 v15, p12

    .line 99
    .line 100
    :goto_8
    and-int/lit16 v1, v0, 0x1000

    .line 101
    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    move/from16 v16, v2

    .line 105
    .line 106
    goto :goto_9

    .line 107
    :cond_9
    move/from16 v16, p13

    .line 108
    .line 109
    :goto_9
    and-int/lit16 v1, v0, 0x2000

    .line 110
    .line 111
    if-eqz v1, :cond_a

    .line 112
    .line 113
    move/from16 v17, v2

    .line 114
    .line 115
    goto :goto_a

    .line 116
    :cond_a
    move/from16 v17, p14

    .line 117
    .line 118
    :goto_a
    and-int/lit16 v1, v0, 0x4000

    .line 119
    .line 120
    if-eqz v1, :cond_b

    .line 121
    .line 122
    const/4 v1, 0x1

    .line 123
    move/from16 v18, v1

    .line 124
    .line 125
    goto :goto_b

    .line 126
    :cond_b
    move/from16 v18, p15

    .line 127
    .line 128
    :goto_b
    const v1, 0x8000

    .line 129
    .line 130
    .line 131
    and-int/2addr v1, v0

    .line 132
    if-eqz v1, :cond_c

    .line 133
    .line 134
    move/from16 v19, v2

    .line 135
    .line 136
    goto :goto_c

    .line 137
    :cond_c
    move/from16 v19, p16

    .line 138
    .line 139
    :goto_c
    const/high16 v1, 0x10000

    .line 140
    .line 141
    and-int/2addr v1, v0

    .line 142
    if-eqz v1, :cond_d

    .line 143
    .line 144
    move/from16 v20, v2

    .line 145
    .line 146
    goto :goto_d

    .line 147
    :cond_d
    move/from16 v20, p17

    .line 148
    .line 149
    :goto_d
    const/high16 v1, 0x20000

    .line 150
    .line 151
    and-int/2addr v1, v0

    .line 152
    if-eqz v1, :cond_e

    .line 153
    .line 154
    move-object/from16 v21, v3

    .line 155
    .line 156
    goto :goto_e

    .line 157
    :cond_e
    move-object/from16 v21, p18

    .line 158
    .line 159
    :goto_e
    const/high16 v1, 0x40000

    .line 160
    .line 161
    and-int/2addr v0, v1

    .line 162
    if-eqz v0, :cond_f

    .line 163
    .line 164
    move-object/from16 v22, v3

    .line 165
    .line 166
    goto :goto_f

    .line 167
    :cond_f
    move-object/from16 v22, p19

    .line 168
    .line 169
    :goto_f
    move-object/from16 v3, p0

    .line 170
    .line 171
    move-object/from16 v4, p1

    .line 172
    .line 173
    move-object/from16 v7, p4

    .line 174
    .line 175
    move/from16 v8, p5

    .line 176
    .line 177
    invoke-virtual/range {v3 .. v22}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)Landroid/text/StaticLayout;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)Landroid/text/StaticLayout;
    .locals 22
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/text/TextDirectionHeuristic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p11    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .param p18    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move/from16 v10, p10

    .line 20
    .line 21
    move/from16 v11, p11

    .line 22
    .line 23
    move/from16 v12, p12

    .line 24
    .line 25
    move/from16 v13, p13

    .line 26
    .line 27
    move/from16 v14, p14

    .line 28
    .line 29
    move/from16 v15, p15

    .line 30
    .line 31
    move/from16 v16, p16

    .line 32
    .line 33
    move/from16 v17, p17

    .line 34
    .line 35
    move-object/from16 v18, p18

    .line 36
    .line 37
    move-object/from16 v19, p19

    .line 38
    .line 39
    const-string v0, "text"

    .line 40
    .line 41
    move-object/from16 v20, v1

    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "paint"

    .line 47
    .line 48
    move-object/from16 v1, p4

    .line 49
    .line 50
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "textDir"

    .line 54
    .line 55
    move-object/from16 v1, p6

    .line 56
    .line 57
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "alignment"

    .line 61
    .line 62
    move-object/from16 v1, p7

    .line 63
    .line 64
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory;->delegate:Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutParams;

    .line 70
    .line 71
    move-object/from16 p1, v0

    .line 72
    .line 73
    move-object/from16 v21, v1

    .line 74
    .line 75
    move-object/from16 v1, v20

    .line 76
    .line 77
    invoke-direct/range {v0 .. v19}, Landroidx/compose/ui/text/android/StaticLayoutParams;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v1, p1

    .line 81
    .line 82
    move-object/from16 v0, v21

    .line 83
    .line 84
    invoke-interface {v0, v1}, Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;->create(Landroidx/compose/ui/text/android/StaticLayoutParams;)Landroid/text/StaticLayout;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method
