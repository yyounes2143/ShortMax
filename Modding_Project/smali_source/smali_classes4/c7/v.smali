.class public final synthetic Lc7/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc7/x$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/v0;

.field public final synthetic c:Lr5/g;


# direct methods
.method public synthetic constructor <init>(Lc7/x$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc7/v;->a:Lc7/x$a;

    .line 5
    .line 6
    iput-object p2, p0, Lc7/v;->b:Lcom/google/android/exoplayer2/v0;

    .line 7
    .line 8
    iput-object p3, p0, Lc7/v;->c:Lr5/g;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc7/v;->a:Lc7/x$a;

    .line 2
    .line 3
    iget-object v1, p0, Lc7/v;->b:Lcom/google/android/exoplayer2/v0;

    .line 4
    .line 5
    iget-object v2, p0, Lc7/v;->c:Lr5/g;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lc7/x$a;->i(Lc7/x$a;Lcom/google/android/exoplayer2/v0;Lr5/g;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
