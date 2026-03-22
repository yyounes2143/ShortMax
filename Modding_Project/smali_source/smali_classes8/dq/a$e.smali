.class public Ldq/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Ldq/a;


# direct methods
.method protected constructor <init>(Ldq/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq/a$e;->a:Ldq/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldq/a$e;->a:Ldq/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lbq/a;->c0()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Ldq/a;->o0(Ldq/a;Ljava/lang/Long;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
