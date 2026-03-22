.class public final Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;
.super Ljava/lang/Object;
.source "HighlightOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/view/guide/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/startshorts/androidplayer/ui/view/guide/model/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/view/guide/model/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->a:Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/startshorts/androidplayer/ui/view/guide/model/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->a:Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->a:Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->c(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final c(Lkj/a;)Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;
    .locals 1
    .param p1    # Lkj/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/b$a;->a:Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->d(Lkj/a;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
