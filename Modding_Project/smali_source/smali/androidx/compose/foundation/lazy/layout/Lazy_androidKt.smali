.class public final Landroidx/compose/foundation/lazy/layout/Lazy_androidKt;
.super Ljava/lang/Object;
.source "Lazy.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final getDefaultLazyLayoutKey(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
