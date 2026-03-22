.class public final Lcom/inmobi/media/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/R6;

.field public b:Z

.field public c:Ljava/lang/Boolean;

.field public d:I

.field public final e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/e2;Lcom/inmobi/media/R6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/inmobi/media/w3;->a:Lcom/inmobi/media/R6;

    .line 5
    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method
