.class public final Lcom/inmobi/media/h8;
.super Lcom/inmobi/media/d8;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public B:I

.field public final C:Z

.field public final D:Z

.field public final x:I

.field public y:J

.field public final z:B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/lang/String;Lorg/json/JSONObject;B)V
    .locals 8

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/h8;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;B)V
    .locals 7

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawAssetJson"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v4, "CONTAINER"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/media/d8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Ljava/util/List;)V

    const/16 p1, 0x10

    .line 4
    iput p1, p0, Lcom/inmobi/media/h8;->x:I

    .line 5
    iput-byte p7, p0, Lcom/inmobi/media/h8;->z:B

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/inmobi/media/h8;->A:Ljava/util/ArrayList;

    .line 7
    const-string p1, "<set-?>"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p5, p0, Lcom/inmobi/media/d8;->g:Ljava/lang/String;

    .line 9
    const-string p1, "root"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/inmobi/media/h8;->C:Z

    .line 10
    const-string p1, "card_scrollable"

    invoke-static {p1, p2, p3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/inmobi/media/h8;->D:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/d8;)V
    .locals 2

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/inmobi/media/h8;->B:I

    .line 7
    .line 8
    iget v1, p0, Lcom/inmobi/media/h8;->x:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/inmobi/media/h8;->B:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/inmobi/media/h8;->A:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/g8;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/inmobi/media/g8;-><init>(Lcom/inmobi/media/h8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
