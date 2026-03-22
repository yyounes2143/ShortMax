.class public final Lp1/b$a;
.super Ljava/lang/Object;
.source "StateChangedHandler.kt"

# interfaces
.implements Lp1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic b:Lp1/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lp1/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lp1/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp1/b$a;->b:Lp1/b$a;

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


# virtual methods
.method public a(Lcom/drake/statelayout/StateLayout;Landroid/view/View;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/drake/statelayout/StateLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drake/statelayout/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lp1/b$b;->b(Lp1/b;Lcom/drake/statelayout/StateLayout;Landroid/view/View;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Lcom/drake/statelayout/StateLayout;Landroid/view/View;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/drake/statelayout/StateLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/drake/statelayout/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lp1/b$b;->a(Lp1/b;Lcom/drake/statelayout/StateLayout;Landroid/view/View;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
