.class public Ldq/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Ldq/a;


# direct methods
.method protected constructor <init>(Ldq/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq/a$d;->a:Ldq/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Ldq/a$d;->a:Ldq/a;

    .line 6
    .line 7
    invoke-static {p1}, Ldq/a;->n0(Ldq/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
