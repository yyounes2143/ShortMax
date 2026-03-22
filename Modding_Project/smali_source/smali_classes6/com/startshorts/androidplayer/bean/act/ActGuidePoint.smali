.class public final Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "ActGuidePoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getWidth(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 4
    .line 5
    invoke-virtual {p1}, Lfk/z;->s()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 11
    .line 12
    invoke-virtual {p1}, Lfk/z;->m()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method
