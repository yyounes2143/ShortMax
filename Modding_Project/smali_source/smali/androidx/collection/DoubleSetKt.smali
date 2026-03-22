.class public final Landroidx/collection/DoubleSetKt;
.super Ljava/lang/Object;
.source "DoubleSet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final EmptyDoubleArray:[D
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [D

    .line 3
    .line 4
    sput-object v0, Landroidx/collection/DoubleSetKt;->EmptyDoubleArray:[D

    .line 5
    .line 6
    return-void
.end method

.method public static final getEmptyDoubleArray()[D
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/DoubleSetKt;->EmptyDoubleArray:[D

    .line 2
    .line 3
    return-object v0
.end method
