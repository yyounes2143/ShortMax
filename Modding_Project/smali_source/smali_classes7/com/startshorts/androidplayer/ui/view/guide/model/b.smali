.class public final Lcom/startshorts/androidplayer/ui/view/guide/model/b;
.super Ljava/lang/Object;
.source "HighlightOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lkj/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Lkj/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->b:Lkj/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->a:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lkj/a;)V
    .locals 0
    .param p1    # Lkj/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->b:Lkj/a;

    .line 2
    .line 3
    return-void
.end method
