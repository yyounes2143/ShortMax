.class public final Lcom/inmobi/media/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Sd;

.field public final b:D


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Sd;D)V
    .locals 1

    .line 1
    const-string v0, "telemetryConfigMetaData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/ce;->a:Lcom/inmobi/media/Sd;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/inmobi/media/ce;->b:D

    .line 12
    .line 13
    return-void
.end method
