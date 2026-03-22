.class final Landroidx/compose/ui/window/DialogWrapper;
.super Landroid/app/Dialog;
.source "AndroidDialog.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/window/DialogWrapper$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final composeView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogLayout:Landroidx/compose/ui/window/DialogLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxSupportedElevation:F

.field private onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private properties:Landroidx/compose/ui/window/DialogProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/window/DialogProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "onDismissRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "properties"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "composeView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "layoutDirection"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "density"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "dialogId"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget v2, Landroidx/compose/ui/R$style;->DialogWindowTheme:I

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 48
    .line 49
    iput-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    .line 50
    .line 51
    const/16 p1, 0x1e

    .line 52
    .line 53
    int-to-float p1, p1

    .line 54
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Landroidx/compose/ui/window/DialogWrapper;->maxSupportedElevation:F

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 68
    .line 69
    .line 70
    const v0, 0x106000d

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Landroidx/compose/ui/window/DialogLayout;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "context"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 88
    .line 89
    .line 90
    sget v1, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "Dialog:"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p6

    .line 109
    invoke-virtual {v0, v1, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/4 p6, 0x0

    .line 113
    invoke-virtual {v0, p6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p5, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Landroidx/compose/ui/window/DialogWrapper$1$2;

    .line 124
    .line 125
    invoke-direct {p1}, Landroidx/compose/ui/window/DialogWrapper$1$2;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 138
    .line 139
    if-eqz p2, :cond_0

    .line 140
    .line 141
    check-cast p1, Landroid/view/ViewGroup;

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    const/4 p1, 0x0

    .line 145
    :goto_0
    if-eqz p1, :cond_1

    .line 146
    .line 147
    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 165
    .line 166
    .line 167
    invoke-static {p3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 175
    .line 176
    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 177
    .line 178
    invoke-virtual {p0, p1, p2, p4}, Landroidx/compose/ui/window/DialogWrapper;->updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    const-string p2, "Dialog has no window"

    .line 185
    .line 186
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
.end method

.method private static final _init_$disableClipping(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    .line 4
    .line 5
    instance-of v1, p0, Landroidx/compose/ui/window/DialogLayout;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    :goto_0
    if-ge v0, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    check-cast v2, Landroid/view/ViewGroup;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_1
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return-void
.end method

.method private final setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/window/DialogWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    aget p1, v1, p1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 19
    .line 20
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/window/SecureFlagPolicy_androidKt;->shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x2000

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p1, -0x2001

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final disposeComposition()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnBackPress()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnClickOutside()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return p1
.end method

.method public final setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/CompositionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "parentComposition"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "children"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/window/DialogLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/window/DialogProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/window/DialogProperties;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "onDismissRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "properties"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layoutDirection"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Landroidx/compose/ui/window/DialogWrapper;->setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p3}, Landroidx/compose/ui/window/DialogWrapper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getUsePlatformDefaultWidth()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1, p2}, Landroidx/compose/ui/window/DialogLayout;->setUsePlatformDefaultWidth(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
