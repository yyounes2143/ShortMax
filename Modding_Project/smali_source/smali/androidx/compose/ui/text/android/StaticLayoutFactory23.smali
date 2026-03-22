.class final Landroidx/compose/ui/text/android/StaticLayoutFactory23;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"

# interfaces
.implements Landroidx/compose/ui/text/android/StaticLayoutFactoryImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create(Landroidx/compose/ui/text/android/StaticLayoutParams;)Landroid/text/StaticLayout;
    .locals 5
    .param p1    # Landroidx/compose/ui/text/android/StaticLayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getStart()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEnd()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getPaint()Landroid/text/TextPaint;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getTextDir()Landroid/text/TextDirectionHeuristic;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getAlignment()Landroid/text/Layout$Alignment;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getMaxLines()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getEllipsizedWidth()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingExtra()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLineSpacingMultiplier()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getIncludePadding()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getBreakStrategy()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getHyphenationFrequency()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getLeftIndents()[I

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getRightIndents()[I

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 106
    .line 107
    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .line 110
    const/16 v2, 0x1a

    .line 111
    .line 112
    const-string v3, "this"

    .line 113
    .line 114
    if-lt v1, v2, :cond_0

    .line 115
    .line 116
    sget-object v2, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory26;

    .line 117
    .line 118
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getJustificationMode()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {v2, v0, v4}, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->setJustificationMode(Landroid/text/StaticLayout$Builder;I)V

    .line 126
    .line 127
    .line 128
    :cond_0
    const/16 v2, 0x1c

    .line 129
    .line 130
    if-lt v1, v2, :cond_1

    .line 131
    .line 132
    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory28;

    .line 133
    .line 134
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/StaticLayoutParams;->getUseFallbackLineSpacing()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {v1, v0, p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->setUseLineSpacingFromFallbacks(Landroid/text/StaticLayout$Builder;Z)V

    .line 142
    .line 143
    .line 144
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string v0, "obtain(params.text, para\u2026  }\n            }.build()"

    .line 149
    .line 150
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object p1
.end method
