.class public Ldq/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ldq/a;


# direct methods
.method protected constructor <init>(Ldq/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq/a$b;->a:Ldq/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldq/a$b;->a:Ldq/a;

    .line 2
    .line 3
    invoke-static {p1}, Ldq/a;->q0(Ldq/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
