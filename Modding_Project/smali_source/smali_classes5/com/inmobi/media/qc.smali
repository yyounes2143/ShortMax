.class public final Lcom/inmobi/media/qc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/inmobi/media/rc;

.field public c:Ljava/util/HashMap;

.field public d:Ljava/util/HashMap;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:Lcom/inmobi/media/tc;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/rc;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "method"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/qc;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/qc;->b:Lcom/inmobi/media/rc;

    .line 17
    .line 18
    return-void
.end method
