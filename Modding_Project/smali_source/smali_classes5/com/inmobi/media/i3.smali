.class public final Lcom/inmobi/media/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/List;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:I

.field public e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "hsv"

    .line 2
    .line 3
    const-string v8, "hcv"

    .line 4
    .line 5
    const-string v0, "ac"

    .line 6
    .line 7
    const-string v1, "bid"

    .line 8
    .line 9
    const-string v2, "its"

    .line 10
    .line 11
    const-string v3, "vtm"

    .line 12
    .line 13
    const-string v4, "plid"

    .line 14
    .line 15
    const-string v5, "catid"

    .line 16
    .line 17
    const-string v6, "hcd"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/inmobi/media/i3;->j:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/inmobi/media/i3;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/inmobi/media/i3;->c:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/inmobi/media/i3;->e:J

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/inmobi/media/i3;->f:I

    .line 16
    .line 17
    return-void
.end method
