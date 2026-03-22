.class final Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$Companion$ModifierLocalNothing$1;->invoke()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/Void;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v1, "default value for sentinel shouldn\'t be read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
