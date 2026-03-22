.class public final Landroidx/room/ObservedTableStates$SyncState;
.super Ljava/lang/Object;
.source "InvalidationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/ObservedTableStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncState"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final newStates:[Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ops:[Landroidx/room/ObservedTableStates$ObserveOp;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version:I


# direct methods
.method public constructor <init>(I[Landroidx/room/ObservedTableStates$ObserveOp;[Z)V
    .locals 1
    .param p2    # [Landroidx/room/ObservedTableStates$ObserveOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ops"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newStates"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Landroidx/room/ObservedTableStates$SyncState;->version:I

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/room/ObservedTableStates$SyncState;->ops:[Landroidx/room/ObservedTableStates$ObserveOp;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/room/ObservedTableStates$SyncState;->newStates:[Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getNewStates()[Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/ObservedTableStates$SyncState;->newStates:[Z

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()[Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/ObservedTableStates$SyncState;->ops:[Landroidx/room/ObservedTableStates$ObserveOp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/ObservedTableStates$SyncState;->version:I

    .line 2
    .line 3
    return v0
.end method
