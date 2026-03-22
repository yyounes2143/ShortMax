.class public final Landroidx/datastore/core/UnInitialized;
.super Landroidx/datastore/core/State;
.source "State.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/core/State<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/datastore/core/UnInitialized;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/core/UnInitialized;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/core/UnInitialized;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/core/UnInitialized;->INSTANCE:Landroidx/datastore/core/UnInitialized;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/datastore/core/State;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
