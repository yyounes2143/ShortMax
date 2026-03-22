.class public final Landroidx/activity/compose/ActivityResultRegistryKt;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,161:1\n25#2:162\n25#2:169\n955#3,6:163\n955#3,6:170\n*S KotlinDebug\n*F\n+ 1 ActivityResultRegistry.kt\nandroidx/activity/compose/ActivityResultRegistryKt\n*L\n97#1:162\n98#1:169\n97#1:163,6\n98#1:170,6\n*E\n"
    }
.end annotation


# direct methods
.method public static final rememberLauncherForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;
    .locals 13
    .param p0    # Landroidx/activity/result/contract/ActivityResultContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TO;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "TI;TO;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v7, p2

    .line 2
    const v0, -0x53f413f7

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    move-object v8, p0

    .line 11
    invoke-static {p0, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    shr-int/lit8 v0, p3, 0x3

    .line 16
    .line 17
    and-int/lit8 v0, v0, 0xe

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v3, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1;->INSTANCE:Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$key$1;

    .line 28
    .line 29
    const/16 v5, 0xc08

    .line 30
    .line 31
    const/4 v6, 0x6

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    move-object v4, p2

    .line 35
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v11, v0

    .line 40
    check-cast v11, Ljava/lang/String;

    .line 41
    .line 42
    sget-object v0, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->INSTANCE:Landroidx/activity/compose/LocalActivityResultRegistryOwner;

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    invoke-virtual {v0, p2, v1}, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const v1, -0x384349

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-ne v2, v4, :cond_0

    .line 72
    .line 73
    new-instance v2, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 74
    .line 75
    invoke-direct {v2}, Landroidx/activity/compose/ActivityResultLauncherHolder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 82
    .line 83
    .line 84
    check-cast v2, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 85
    .line 86
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-ne v1, v3, :cond_1

    .line 98
    .line 99
    new-instance v1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 100
    .line 101
    invoke-direct {v1, v2, v9}, Landroidx/activity/compose/ManagedActivityResultLauncher;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/compose/runtime/State;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 108
    .line 109
    .line 110
    move-object v9, v1

    .line 111
    check-cast v9, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 112
    .line 113
    new-instance v12, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;

    .line 114
    .line 115
    move-object v1, v12

    .line 116
    move-object v3, v0

    .line 117
    move-object v4, v11

    .line 118
    move-object v5, p0

    .line 119
    move-object v6, v10

    .line 120
    invoke-direct/range {v1 .. v6}, Landroidx/activity/compose/ActivityResultRegistryKt$rememberLauncherForActivityResult$1;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/compose/runtime/State;)V

    .line 121
    .line 122
    .line 123
    const/16 v5, 0x208

    .line 124
    .line 125
    move-object v1, v11

    .line 126
    move-object v2, p0

    .line 127
    move-object v3, v12

    .line 128
    move-object v4, p2

    .line 129
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 133
    .line 134
    .line 135
    return-object v9

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v1, "No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method
