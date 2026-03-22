.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a0;->a(Lat/p;Landroidx/compose/runtime/Composer;II)Lat/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/r<",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "Ljava/lang/Boolean;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Ljava/lang/Boolean;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPlaybackControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/PlaybackControlKt$defaultPlaybackControl$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,60:1\n1057#2,6:61\n*S KotlinDebug\n*F\n+ 1 PlaybackControl.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/PlaybackControlKt$defaultPlaybackControl$1\n*L\n33#1:61,6\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lat/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/p<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lat/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/p<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a0$a;->a:Lat/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    xor-int/lit8 p0, p3, 0x1

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/layout/BoxScope;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Z",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "progress"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onShouldPlay"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onShouldReplay"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, p7, 0x6

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p6, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, p7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, p7

    .line 37
    :goto_1
    and-int/lit8 v1, p7, 0x30

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    invoke-interface {p6, p2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v1, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v0, v1

    .line 53
    :cond_3
    and-int/lit16 v1, p7, 0x180

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    invoke-interface {p6, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const/16 v1, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v1, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v0, v1

    .line 69
    :cond_5
    and-int/lit16 v1, p7, 0xc00

    .line 70
    .line 71
    if-nez v1, :cond_7

    .line 72
    .line 73
    invoke-interface {p6, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/16 v1, 0x800

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v1, 0x400

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v1

    .line 85
    :cond_7
    and-int/lit16 p7, p7, 0x6000

    .line 86
    .line 87
    if-nez p7, :cond_9

    .line 88
    .line 89
    invoke-interface {p6, p5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p7

    .line 93
    if-eqz p7, :cond_8

    .line 94
    .line 95
    const/16 p7, 0x4000

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    const/16 p7, 0x2000

    .line 99
    .line 100
    :goto_5
    or-int/2addr v0, p7

    .line 101
    :cond_9
    const p7, 0x12493

    .line 102
    .line 103
    .line 104
    and-int/2addr p7, v0

    .line 105
    const v1, 0x12492

    .line 106
    .line 107
    .line 108
    if-ne p7, v1, :cond_b

    .line 109
    .line 110
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 111
    .line 112
    .line 113
    move-result p7

    .line 114
    if-nez p7, :cond_a

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 118
    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_b
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 122
    .line 123
    .line 124
    move-result p7

    .line 125
    if-eqz p7, :cond_c

    .line 126
    .line 127
    const/4 p7, -0x1

    .line 128
    const-string v1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultPlaybackControl.<anonymous> (PlaybackControl.kt:32)"

    .line 129
    .line 130
    const v2, 0x715b97f3

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v0, p7, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_c
    const p7, 0xfb8cf42

    .line 137
    .line 138
    .line 139
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p6, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p7

    .line 146
    invoke-interface {p6, p5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    or-int/2addr p7, v1

    .line 151
    invoke-interface {p6, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    or-int/2addr p7, v1

    .line 156
    invoke-interface {p6, p2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    or-int/2addr p7, v1

    .line 161
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-nez p7, :cond_d

    .line 166
    .line 167
    sget-object p7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 168
    .line 169
    invoke-virtual {p7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p7

    .line 173
    if-ne v1, p7, :cond_e

    .line 174
    .line 175
    :cond_d
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/z;

    .line 176
    .line 177
    invoke-direct {v1, p3, p5, p4, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/z;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_e
    move-object v5, v1

    .line 184
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 185
    .line 186
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a0$a;->a:Lat/p;

    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    and-int/lit8 p2, v0, 0x7e

    .line 196
    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    move-object v3, p1

    .line 202
    move-object v6, p6

    .line 203
    invoke-interface/range {v2 .. v7}, Lat/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_f

    .line 211
    .line 212
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 213
    .line 214
    .line 215
    :cond_f
    :goto_7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    move-object v3, p3

    .line 11
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;

    .line 12
    .line 13
    move-object v4, p4

    .line 14
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    move-object v5, p5

    .line 17
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    move-object v6, p6

    .line 20
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    check-cast p7, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    move-object v0, p0

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/a0$a;->b(Landroidx/compose/foundation/layout/BoxScope;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p1
.end method
