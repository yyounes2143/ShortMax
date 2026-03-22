.class public abstract Lr0/m;
.super Ljava/lang/Object;
.source "HardwareBitmaps.kt"


# annotations
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
    invoke-direct {p0}, Lr0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ln0/g;)Z
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract b()Z
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
