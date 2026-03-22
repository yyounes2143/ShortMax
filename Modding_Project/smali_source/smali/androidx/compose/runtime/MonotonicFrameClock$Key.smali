.class public final Landroidx/compose/runtime/MonotonicFrameClock$Key;
.super Ljava/lang/Object;
.source "MonotonicFrameClock.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MonotonicFrameClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$b<",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/MonotonicFrameClock$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/MonotonicFrameClock$Key;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/MonotonicFrameClock$Key;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/MonotonicFrameClock$Key;->$$INSTANCE:Landroidx/compose/runtime/MonotonicFrameClock$Key;

    .line 7
    .line 8
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
