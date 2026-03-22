.class final Lun/b;
.super Lyo/j;
.source "DelegatingSubtitleDecoder.java"


# instance fields
.field private final p:Lyo/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyo/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyo/j;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lun/b;->p:Lyo/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected y([BIZ)Lyo/k;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lun/b;->p:Lyo/r;

    .line 4
    .line 5
    invoke-interface {p3}, Lyo/r;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lun/b;->p:Lyo/r;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p3, p1, v0, p2}, Lyo/r;->c([BII)Lyo/k;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
