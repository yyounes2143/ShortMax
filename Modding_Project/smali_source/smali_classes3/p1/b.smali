.class public interface abstract Lp1/b;
.super Ljava/lang/Object;
.source "StateChangedHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/b$a;,
        Lp1/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lp1/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lp1/b$a;->b:Lp1/b$a;

    .line 2
    .line 3
    sput-object v0, Lp1/b;->a:Lp1/b$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/drake/statelayout/StateLayout;Landroid/view/View;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V
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
.end method

.method public abstract b(Lcom/drake/statelayout/StateLayout;Landroid/view/View;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V
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
.end method
