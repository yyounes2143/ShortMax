.class public final Landroidx/compose/ui/autofill/AutofillNode$Companion;
.super Ljava/lang/Object;
.source "Autofill.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/autofill/AutofillNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Landroidx/compose/ui/autofill/AutofillNode$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateId(Landroidx/compose/ui/autofill/AutofillNode$Companion;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/autofill/AutofillNode$Companion;->generateId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final generateId()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/compose/ui/autofill/AutofillNode;->access$getPreviousId$cp()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/ui/autofill/AutofillNode;->access$setPreviousId$cp(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/autofill/AutofillNode;->access$getPreviousId$cp()I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method
