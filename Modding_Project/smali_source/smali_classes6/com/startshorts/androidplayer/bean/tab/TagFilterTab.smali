.class public final Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "TagFilterTab.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;->id:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;->name:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
