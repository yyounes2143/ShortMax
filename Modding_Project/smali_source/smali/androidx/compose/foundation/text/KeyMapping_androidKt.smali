.class public final Landroidx/compose/foundation/text/KeyMapping_androidKt;
.super Ljava/lang/Object;
.source "KeyMapping.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/foundation/text/KeyMappingKt;->getDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    .line 6
    .line 7
    return-void
.end method

.method public static final getPlatformDefaultKeyMapping()Landroidx/compose/foundation/text/KeyMapping;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/KeyMapping_androidKt;->platformDefaultKeyMapping:Landroidx/compose/foundation/text/KeyMapping;

    .line 2
    .line 3
    return-object v0
.end method
