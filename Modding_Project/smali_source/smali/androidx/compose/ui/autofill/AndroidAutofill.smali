.class public final Landroidx/compose/ui/autofill/AndroidAutofill;
.super Ljava/lang/Object;
.source "AndroidAutofill.android.kt"

# interfaces
.implements Landroidx/compose/ui/autofill/Autofill;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final autofillManager:Landroid/view/autofill/AutofillManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final autofillTree:Landroidx/compose/ui/autofill/AutofillTree;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/compose/ui/autofill/AutofillTree;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/autofill/AutofillTree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "autofillTree"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->view:Landroid/view/View;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {}, Lo/c;->a()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Lo/d;->a(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillManager:Landroid/view/autofill/AutofillManager;

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-static {p1, p2}, Lo/e;->a(Landroid/view/View;I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "Autofill service could not be located."

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method


# virtual methods
.method public cancelAutofillForNode(Landroidx/compose/ui/autofill/AutofillNode;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/autofill/AutofillNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "autofillNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillManager:Landroid/view/autofill/AutofillManager;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->view:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/autofill/AutofillNode;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {v0, v1, p1}, Lo/a;->a(Landroid/view/autofill/AutofillManager;Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillManager:Landroid/view/autofill/AutofillManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillTree:Landroidx/compose/ui/autofill/AutofillTree;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->view:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public requestAutofillForNode(Landroidx/compose/ui/autofill/AutofillNode;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/autofill/AutofillNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "autofillNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->autofillManager:Landroid/view/autofill/AutofillManager;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->view:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/autofill/AutofillNode;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/autofill/AutofillNode;->getBoundingBox()Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-static {v0, v1, v2, p1}, Lo/b;->a(Landroid/view/autofill/AutofillManager;Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "requestAutofill called before onChildPositioned()"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
