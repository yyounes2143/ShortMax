.class public final Lcom/inmobi/ads/exceptions/InvalidPlacementIdException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "AdPlacement id value is not supplied in XML layout. Banner creation failed."

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
