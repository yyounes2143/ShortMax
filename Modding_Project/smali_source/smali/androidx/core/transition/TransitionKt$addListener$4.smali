.class public final Landroidx/core/transition/TransitionKt$addListener$4;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener$default(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/transition/Transition;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n*L\n1#1,76:1\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/transition/TransitionKt$addListener$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/transition/TransitionKt$addListener$4;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/transition/TransitionKt$addListener$4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/transition/TransitionKt$addListener$4;->INSTANCE:Landroidx/core/transition/TransitionKt$addListener$4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroidx/core/transition/TransitionKt$addListener$4;->invoke(Landroid/transition/Transition;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/transition/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
