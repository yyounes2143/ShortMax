.class public final Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/EffectsKt;->rememberCoroutineScope(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lgt/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/coroutines/EmptyCoroutineContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;->INSTANCE:Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;

    .line 7
    .line 8
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


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1;->invoke()Lkotlin/coroutines/EmptyCoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/coroutines/EmptyCoroutineContext;
    .locals 1

    .line 2
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object v0
.end method
