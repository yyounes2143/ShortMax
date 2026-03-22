.class public final Landroidx/compose/runtime/LongState$DefaultImpls;
.super Ljava/lang/Object;
.source "SnapshotLongState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/LongState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static getValue(Landroidx/compose/runtime/LongState;)Ljava/lang/Long;
    .locals 2
    .param p0    # Landroidx/compose/runtime/LongState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/snapshots/AutoboxingStateValueProperty;
        preferredPropertyName = "longValue"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/LongState;->access$getValue$jd(Landroidx/compose/runtime/LongState;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
