.class public final Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;
.super Ljava/lang/Object;
.source "LibraryClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/library/LibraryCategory;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createChannelAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v1, 0x3

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;-><init>(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final createClassAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;-><init>(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final createExpenseChannelAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v1, 0x3

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;-><init>(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
