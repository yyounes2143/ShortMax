.class public final Landroidx/compose/ui/text/input/TextInputServiceAndroid;
.super Ljava/lang/Object;
.source "TextInputServiceAndroid.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/PlatformTextInputService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;,
        Landroidx/compose/ui/text/input/TextInputServiceAndroid$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final baseInputConnection$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private editorHasFocus:Z

.field private focusedRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ic:Landroidx/compose/ui/text/input/RecordingInputConnection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imeOptions:Landroidx/compose/ui/text/input/ImeOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onEditCommand:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onImeActionPerformed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private state:Landroidx/compose/ui/text/input/TextFieldValue;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textInputCommandChannel:Ljt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/d<",
            "Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroidx/compose/ui/text/input/InputMethodManagerImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/InputMethodManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;-><init>(Landroid/view/View;Landroidx/compose/ui/text/input/InputMethodManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/text/input/InputMethodManager;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/InputMethodManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    .line 4
    sget-object p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$onEditCommand$1;->INSTANCE:Landroidx/compose/ui/text/input/TextInputServiceAndroid$onEditCommand$1;

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 5
    sget-object p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$onImeActionPerformed$1;->INSTANCE:Landroidx/compose/ui/text/input/TextInputServiceAndroid$onImeActionPerformed$1;

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 6
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    sget-object p2, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v1, ""

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 7
    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions$Companion;->getDefault()Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 8
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Landroidx/compose/ui/text/input/TextInputServiceAndroid$baseInputConnection$2;

    invoke-direct {p2, p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid$baseInputConnection$2;-><init>(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)V

    invoke-static {p1, p2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->baseInputConnection$delegate:Lms/i;

    const/4 p1, 0x0

    const/4 p2, 0x6

    const v0, 0x7fffffff

    .line 9
    invoke-static {v0, p1, p1, p2, p1}, Ljt/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljt/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    return-void
.end method

.method public static final synthetic access$getBaseInputConnection(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)Landroid/view/inputmethod/BaseInputConnection;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->getBaseInputConnection()Landroid/view/inputmethod/BaseInputConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOnEditCommand$p(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOnImeActionPerformed$p(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getBaseInputConnection()Landroid/view/inputmethod/BaseInputConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->baseInputConnection$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 8
    .line 9
    return-object v0
.end method

.method private final restartInputImmediately()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/compose/ui/text/input/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setKeyboardVisibleImmediately(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroidx/compose/ui/text/input/InputMethodManager;->showSoftInput(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Landroidx/compose/ui/text/input/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private static final textInputCommandEventLoop$applyToState(Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    .line 24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_4

    .line 31
    .line 32
    sget-object p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->ShowKeyboard:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 33
    .line 34
    if-ne p0, p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "outAttrs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->editorHasFocus:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->update(Landroid/view/inputmethod/EditorInfo;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeOptions;->getAutoCorrect()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-instance v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;-><init>(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/compose/ui/text/input/RecordingInputConnection;

    .line 33
    .line 34
    invoke-direct {v2, p1, v1, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->ic:Landroidx/compose/ui/text/input/RecordingInputConnection;

    .line 38
    .line 39
    return-object v2
.end method

.method public final getState$ui_release()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public hideSoftwareKeyboard()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->HideKeyboard:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final isEditorFocused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->editorHasFocus:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, "rect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Lbt/a;->c(F)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->focusedRect:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->ic:Landroidx/compose/ui/text/input/RecordingInputConnection;

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 50
    .line 51
    new-instance v1, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public showSoftwareKeyboard()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->ShowKeyboard:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/ImeOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "imeOptions"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onEditCommand"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onImeActionPerformed"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->editorHasFocus:Z

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 33
    .line 34
    sget-object p2, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->StartInput:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public stopInput()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->editorHasFocus:Z

    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$stopInput$1;->INSTANCE:Landroidx/compose/ui/text/input/TextInputServiceAndroid$stopInput$1;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$stopInput$2;->INSTANCE:Landroidx/compose/ui/text/input/TextInputServiceAndroid$stopInput$2;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->focusedRect:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->StopInput:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final textInputCommandEventLoop(Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;-><init>(Landroidx/compose/ui/text/input/TextInputServiceAndroid;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Ljt/f;

    .line 41
    .line 42
    iget-object v4, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 62
    .line 63
    invoke-interface {p1}, Ljt/i;->iterator()Ljt/f;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    move-object v4, p0

    .line 68
    move-object v2, p1

    .line 69
    :cond_3
    :goto_1
    iput-object v4, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v2, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    iput v3, v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$textInputCommandEventLoop$1;->label:I

    .line 74
    .line 75
    invoke-interface {v2, v0}, Ljt/f;->a(Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_4

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_a

    .line 89
    .line 90
    invoke-interface {v2}, Ljt/f;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 95
    .line 96
    iget-object v5, v4, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_6

    .line 103
    .line 104
    :cond_5
    iget-object p1, v4, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 105
    .line 106
    invoke-interface {p1}, Ljt/i;->l()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlinx/coroutines/channels/a;->i(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 118
    .line 119
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 123
    .line 124
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 125
    .line 126
    .line 127
    :goto_3
    if-eqz p1, :cond_7

    .line 128
    .line 129
    invoke-static {p1, v5, v6}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandEventLoop$applyToState(Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v4, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->textInputCommandChannel:Ljt/d;

    .line 133
    .line 134
    invoke-interface {p1}, Ljt/i;->l()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Lkotlinx/coroutines/channels/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_8

    .line 156
    .line 157
    invoke-direct {v4}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->restartInputImmediately()V

    .line 158
    .line 159
    .line 160
    :cond_8
    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, Ljava/lang/Boolean;

    .line 163
    .line 164
    if-eqz p1, :cond_9

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-direct {v4, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->setKeyboardVisibleImmediately(Z)V

    .line 171
    .line 172
    .line 173
    :cond_9
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_3

    .line 185
    .line 186
    invoke-direct {v4}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->restartInputImmediately()V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    return-object p1
.end method

.method public updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newValue"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 42
    :goto_1
    iput-object p2, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->ic:Landroidx/compose/ui/text/input/RecordingInputConnection;

    .line 45
    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {v1, p2}, Landroidx/compose/ui/text/input/RecordingInputConnection;->setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 p2, -0x1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    move v6, p1

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    move v6, p2

    .line 100
    :goto_3
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    move v7, p1

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    move v7, p2

    .line 119
    :goto_4
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/text/input/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void

    .line 123
    :cond_6
    if-eqz p1, :cond_8

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_8

    .line 166
    .line 167
    :cond_7
    invoke-direct {p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->restartInputImmediately()V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_8
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->ic:Landroidx/compose/ui/text/input/RecordingInputConnection;

    .line 172
    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    iget-object p2, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->inputMethodManager:Landroidx/compose/ui/text/input/InputMethodManager;

    .line 178
    .line 179
    iget-object v1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->view:Landroid/view/View;

    .line 180
    .line 181
    invoke-virtual {p1, p2, v0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->updateInputState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputMethodManager;Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    :goto_5
    return-void
.end method
