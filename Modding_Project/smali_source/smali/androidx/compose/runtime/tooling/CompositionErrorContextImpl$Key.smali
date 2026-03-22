.class public final Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;
.super Ljava/lang/Object;
.source "CompositionErrorContext.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$b<",
        "Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl$Key;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CompositionErrorContext"

    .line 2
    .line 3
    return-object v0
.end method
