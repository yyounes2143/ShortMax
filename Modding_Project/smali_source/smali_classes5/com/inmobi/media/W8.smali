.class public final Lcom/inmobi/media/W8;
.super Lcom/inmobi/media/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/h;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const-string v0, "ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "videoUrl"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "videoDuration"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "trackers"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "companionAds"

    .line 22
    .line 23
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/inmobi/media/h;-><init>(Lcom/inmobi/media/h;Lorg/json/JSONArray;)V

    .line 27
    .line 28
    .line 29
    iput-object p3, p0, Lcom/inmobi/media/W8;->a:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/inmobi/media/W8;->b:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/inmobi/media/W8;->c:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p6, p0, Lcom/inmobi/media/W8;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object p7, p0, Lcom/inmobi/media/W8;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    return-void
.end method
