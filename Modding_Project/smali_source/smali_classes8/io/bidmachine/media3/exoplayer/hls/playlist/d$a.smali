.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;
.super Ljava/lang/Object;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lio/bidmachine/media3/common/a;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->b:Lio/bidmachine/media3/common/a;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
