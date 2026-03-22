.class public final Lcom/inmobi/media/O6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/R6;

.field public final b:Lcom/inmobi/media/c4;

.field public final c:Ljava/util/LinkedHashSet;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/media/R6;Lcom/inmobi/media/c4;)V
    .locals 1

    .line 1
    const-string v0, "embeddedBrowserViewClient"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/inmobi/media/O6;->c:Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    return-void
.end method
